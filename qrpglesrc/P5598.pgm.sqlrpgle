**free

ctl-opt dftactgrp(*no);

dcl-pi P5598;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P258.rpgleinc'
/copy 'qrpgleref/P4567.rpgleinc'
/copy 'qrpgleref/P4215.rpgleinc'

dcl-ds theTable extname('T336') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T336 LIMIT 1;

theCharVar = 'Hello from P5598';
dsply theCharVar;
P258();
P4567();
P4215();
return;