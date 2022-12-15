**free

ctl-opt dftactgrp(*no);

dcl-pi P3656;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1978.rpgleinc'
/copy 'qrpgleref/P372.rpgleinc'
/copy 'qrpgleref/P851.rpgleinc'

dcl-ds theTable extname('T1444') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1444 LIMIT 1;

theCharVar = 'Hello from P3656';
dsply theCharVar;
P1978();
P372();
P851();
return;