**free

ctl-opt dftactgrp(*no);

dcl-pi P4394;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P941.rpgleinc'
/copy 'qrpgleref/P1647.rpgleinc'
/copy 'qrpgleref/P3959.rpgleinc'

dcl-ds theTable extname('T1696') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1696 LIMIT 1;

theCharVar = 'Hello from P4394';
dsply theCharVar;
P941();
P1647();
P3959();
return;