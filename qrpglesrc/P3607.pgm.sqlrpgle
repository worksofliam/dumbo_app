**free

ctl-opt dftactgrp(*no);

dcl-pi P3607;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P299.rpgleinc'
/copy 'qrpgleref/P3340.rpgleinc'
/copy 'qrpgleref/P2334.rpgleinc'

dcl-ds theTable extname('T1504') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1504 LIMIT 1;

theCharVar = 'Hello from P3607';
dsply theCharVar;
P299();
P3340();
P2334();
return;