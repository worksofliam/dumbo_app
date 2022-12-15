**free

ctl-opt dftactgrp(*no);

dcl-pi P5440;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1689.rpgleinc'
/copy 'qrpgleref/P518.rpgleinc'
/copy 'qrpgleref/P4543.rpgleinc'

dcl-ds theTable extname('T1349') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1349 LIMIT 1;

theCharVar = 'Hello from P5440';
dsply theCharVar;
P1689();
P518();
P4543();
return;