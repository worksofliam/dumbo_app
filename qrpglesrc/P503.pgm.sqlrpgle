**free

ctl-opt dftactgrp(*no);

dcl-pi P503;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P203.rpgleinc'
/copy 'qrpgleref/P179.rpgleinc'
/copy 'qrpgleref/P175.rpgleinc'

dcl-ds T1009 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1009 FROM T1009 LIMIT 1;

theCharVar = 'Hello from P503';
dsply theCharVar;
P203();
P179();
P175();
return;