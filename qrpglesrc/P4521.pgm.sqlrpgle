**free

ctl-opt dftactgrp(*no);

dcl-pi P4521;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1021.rpgleinc'
/copy 'qrpgleref/P1980.rpgleinc'
/copy 'qrpgleref/P2791.rpgleinc'

dcl-ds theTable extname('T1301') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1301 LIMIT 1;

theCharVar = 'Hello from P4521';
dsply theCharVar;
P1021();
P1980();
P2791();
return;