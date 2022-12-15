**free

ctl-opt dftactgrp(*no);

dcl-pi P3195;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2318.rpgleinc'
/copy 'qrpgleref/P2380.rpgleinc'
/copy 'qrpgleref/P2088.rpgleinc'

dcl-ds T1471 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1471 FROM T1471 LIMIT 1;

theCharVar = 'Hello from P3195';
dsply theCharVar;
P2318();
P2380();
P2088();
return;