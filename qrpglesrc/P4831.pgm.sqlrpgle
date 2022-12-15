**free

ctl-opt dftactgrp(*no);

dcl-pi P4831;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P383.rpgleinc'
/copy 'qrpgleref/P3761.rpgleinc'
/copy 'qrpgleref/P3176.rpgleinc'

dcl-ds theTable extname('T1852') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1852 LIMIT 1;

theCharVar = 'Hello from P4831';
dsply theCharVar;
P383();
P3761();
P3176();
return;