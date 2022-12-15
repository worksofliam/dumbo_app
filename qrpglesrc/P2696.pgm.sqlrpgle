**free

ctl-opt dftactgrp(*no);

dcl-pi P2696;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P747.rpgleinc'
/copy 'qrpgleref/P2187.rpgleinc'
/copy 'qrpgleref/P2395.rpgleinc'

dcl-ds T368 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T368 FROM T368 LIMIT 1;

theCharVar = 'Hello from P2696';
dsply theCharVar;
P747();
P2187();
P2395();
return;