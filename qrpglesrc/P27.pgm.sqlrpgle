**free

ctl-opt dftactgrp(*no);

dcl-pi P27;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P16.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'

dcl-ds T15 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T15 FROM T15 LIMIT 1;

theCharVar = 'Hello from P27';
dsply theCharVar;
P16();
P0();
P7();
return;