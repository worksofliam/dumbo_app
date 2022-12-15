**free

ctl-opt dftactgrp(*no);

dcl-pi P4828;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P622.rpgleinc'
/copy 'qrpgleref/P2591.rpgleinc'
/copy 'qrpgleref/P3318.rpgleinc'

dcl-ds T1333 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1333 FROM T1333 LIMIT 1;

theCharVar = 'Hello from P4828';
dsply theCharVar;
P622();
P2591();
P3318();
return;