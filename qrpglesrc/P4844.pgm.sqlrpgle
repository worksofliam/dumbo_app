**free

ctl-opt dftactgrp(*no);

dcl-pi P4844;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1776.rpgleinc'
/copy 'qrpgleref/P3114.rpgleinc'
/copy 'qrpgleref/P2014.rpgleinc'

dcl-ds theTable extname('T1386') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1386 LIMIT 1;

theCharVar = 'Hello from P4844';
dsply theCharVar;
P1776();
P3114();
P2014();
return;