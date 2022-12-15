**free

ctl-opt dftactgrp(*no);

dcl-pi P523;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P456.rpgleinc'
/copy 'qrpgleref/P363.rpgleinc'
/copy 'qrpgleref/P230.rpgleinc'

dcl-ds T1193 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1193 FROM T1193 LIMIT 1;

theCharVar = 'Hello from P523';
dsply theCharVar;
P456();
P363();
P230();
return;