**free

ctl-opt dftactgrp(*no);

dcl-pi P552;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P88.rpgleinc'
/copy 'qrpgleref/P430.rpgleinc'
/copy 'qrpgleref/P230.rpgleinc'

dcl-ds T20 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T20 FROM T20 LIMIT 1;

theCharVar = 'Hello from P552';
dsply theCharVar;
P88();
P430();
P230();
return;