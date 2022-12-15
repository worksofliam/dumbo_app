**free

ctl-opt dftactgrp(*no);

dcl-pi P4990;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1763.rpgleinc'
/copy 'qrpgleref/P3737.rpgleinc'
/copy 'qrpgleref/P2523.rpgleinc'

dcl-ds T1404 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1404 FROM T1404 LIMIT 1;

theCharVar = 'Hello from P4990';
dsply theCharVar;
P1763();
P3737();
P2523();
return;