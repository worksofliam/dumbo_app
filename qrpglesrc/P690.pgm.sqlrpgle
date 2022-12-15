**free

ctl-opt dftactgrp(*no);

dcl-pi P690;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P267.rpgleinc'
/copy 'qrpgleref/P177.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'

dcl-ds theTable extname('T241') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T241 LIMIT 1;

theCharVar = 'Hello from P690';
dsply theCharVar;
P267();
P177();
P49();
return;