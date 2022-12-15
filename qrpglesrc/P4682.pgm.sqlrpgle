**free

ctl-opt dftactgrp(*no);

dcl-pi P4682;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3820.rpgleinc'
/copy 'qrpgleref/P1595.rpgleinc'
/copy 'qrpgleref/P3865.rpgleinc'

dcl-ds theTable extname('T648') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T648 LIMIT 1;

theCharVar = 'Hello from P4682';
dsply theCharVar;
P3820();
P1595();
P3865();
return;