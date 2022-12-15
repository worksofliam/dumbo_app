**free

ctl-opt dftactgrp(*no);

dcl-pi P23;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P16.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'

dcl-ds T446 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T446 FROM T446 LIMIT 1;

theCharVar = 'Hello from P23';
dsply theCharVar;
P16();
P12();
return;