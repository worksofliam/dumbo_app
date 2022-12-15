**free

ctl-opt dftactgrp(*no);

dcl-pi P3212;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3205.rpgleinc'
/copy 'qrpgleref/P2366.rpgleinc'
/copy 'qrpgleref/P1207.rpgleinc'

dcl-ds T1465 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1465 FROM T1465 LIMIT 1;

theCharVar = 'Hello from P3212';
dsply theCharVar;
P3205();
P2366();
P1207();
return;