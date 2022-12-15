**free

ctl-opt dftactgrp(*no);

dcl-pi P5271;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5148.rpgleinc'
/copy 'qrpgleref/P4322.rpgleinc'
/copy 'qrpgleref/P4658.rpgleinc'

dcl-ds theTable extname('T1349') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1349 LIMIT 1;

theCharVar = 'Hello from P5271';
dsply theCharVar;
P5148();
P4322();
P4658();
return;