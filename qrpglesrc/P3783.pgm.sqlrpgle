**free

ctl-opt dftactgrp(*no);

dcl-pi P3783;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P482.rpgleinc'
/copy 'qrpgleref/P1600.rpgleinc'
/copy 'qrpgleref/P65.rpgleinc'

dcl-ds theTable extname('T1244') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1244 LIMIT 1;

theCharVar = 'Hello from P3783';
dsply theCharVar;
P482();
P1600();
P65();
return;