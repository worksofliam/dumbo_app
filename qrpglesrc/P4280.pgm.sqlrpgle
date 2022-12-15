**free

ctl-opt dftactgrp(*no);

dcl-pi P4280;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P229.rpgleinc'
/copy 'qrpgleref/P4269.rpgleinc'
/copy 'qrpgleref/P3406.rpgleinc'

dcl-ds theTable extname('T1149') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1149 LIMIT 1;

theCharVar = 'Hello from P4280';
dsply theCharVar;
P229();
P4269();
P3406();
return;