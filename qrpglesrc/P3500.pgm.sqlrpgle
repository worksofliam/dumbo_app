**free

ctl-opt dftactgrp(*no);

dcl-pi P3500;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2338.rpgleinc'
/copy 'qrpgleref/P951.rpgleinc'
/copy 'qrpgleref/P2224.rpgleinc'

dcl-ds T1699 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1699 FROM T1699 LIMIT 1;

theCharVar = 'Hello from P3500';
dsply theCharVar;
P2338();
P951();
P2224();
return;