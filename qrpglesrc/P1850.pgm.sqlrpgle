**free

ctl-opt dftactgrp(*no);

dcl-pi P1850;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P226.rpgleinc'
/copy 'qrpgleref/P158.rpgleinc'
/copy 'qrpgleref/P564.rpgleinc'

dcl-ds T1511 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1511 FROM T1511 LIMIT 1;

theCharVar = 'Hello from P1850';
dsply theCharVar;
P226();
P158();
P564();
return;