**free

ctl-opt dftactgrp(*no);

dcl-pi P3351;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P663.rpgleinc'
/copy 'qrpgleref/P1356.rpgleinc'
/copy 'qrpgleref/P91.rpgleinc'

dcl-ds T84 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T84 FROM T84 LIMIT 1;

theCharVar = 'Hello from P3351';
dsply theCharVar;
P663();
P1356();
P91();
return;