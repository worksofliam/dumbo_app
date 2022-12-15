**free

ctl-opt dftactgrp(*no);

dcl-pi P1315;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1222.rpgleinc'
/copy 'qrpgleref/P507.rpgleinc'
/copy 'qrpgleref/P724.rpgleinc'

dcl-ds T321 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T321 FROM T321 LIMIT 1;

theCharVar = 'Hello from P1315';
dsply theCharVar;
P1222();
P507();
P724();
return;