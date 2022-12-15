**free

ctl-opt dftactgrp(*no);

dcl-pi P190;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P188.rpgleinc'
/copy 'qrpgleref/P144.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'

dcl-ds T163 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T163 FROM T163 LIMIT 1;

theCharVar = 'Hello from P190';
dsply theCharVar;
P188();
P144();
P13();
return;