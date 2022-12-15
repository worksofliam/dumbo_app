**free

ctl-opt dftactgrp(*no);

dcl-pi P175;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P109.rpgleinc'
/copy 'qrpgleref/P113.rpgleinc'

dcl-ds theTable extname('T377') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T377 LIMIT 1;

theCharVar = 'Hello from P175';
dsply theCharVar;
P19();
P109();
P113();
return;