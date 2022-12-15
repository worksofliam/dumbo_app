**free

ctl-opt dftactgrp(*no);

dcl-pi P2703;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1797.rpgleinc'
/copy 'qrpgleref/P2656.rpgleinc'
/copy 'qrpgleref/P1870.rpgleinc'

dcl-ds T1319 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1319 FROM T1319 LIMIT 1;

theCharVar = 'Hello from P2703';
dsply theCharVar;
P1797();
P2656();
P1870();
return;