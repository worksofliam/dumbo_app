**free

ctl-opt dftactgrp(*no);

dcl-pi P1803;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P995.rpgleinc'
/copy 'qrpgleref/P996.rpgleinc'
/copy 'qrpgleref/P1776.rpgleinc'

dcl-ds theTable extname('T810') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T810 LIMIT 1;

theCharVar = 'Hello from P1803';
dsply theCharVar;
P995();
P996();
P1776();
return;