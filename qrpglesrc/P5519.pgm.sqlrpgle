**free

ctl-opt dftactgrp(*no);

dcl-pi P5519;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P978.rpgleinc'
/copy 'qrpgleref/P4705.rpgleinc'
/copy 'qrpgleref/P1385.rpgleinc'

dcl-ds theTable extname('T109') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T109 LIMIT 1;

theCharVar = 'Hello from P5519';
dsply theCharVar;
P978();
P4705();
P1385();
return;