**free

ctl-opt dftactgrp(*no);

dcl-pi P1709;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1194.rpgleinc'
/copy 'qrpgleref/P782.rpgleinc'
/copy 'qrpgleref/P855.rpgleinc'

dcl-ds T125 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T125 FROM T125 LIMIT 1;

theCharVar = 'Hello from P1709';
dsply theCharVar;
P1194();
P782();
P855();
return;