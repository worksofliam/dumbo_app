**free

ctl-opt dftactgrp(*no);

dcl-pi P1987;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P434.rpgleinc'
/copy 'qrpgleref/P306.rpgleinc'
/copy 'qrpgleref/P1892.rpgleinc'

dcl-ds theTable extname('T1797') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1797 LIMIT 1;

theCharVar = 'Hello from P1987';
dsply theCharVar;
P434();
P306();
P1892();
return;