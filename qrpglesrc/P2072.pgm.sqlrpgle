**free

ctl-opt dftactgrp(*no);

dcl-pi P2072;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P29.rpgleinc'
/copy 'qrpgleref/P1494.rpgleinc'
/copy 'qrpgleref/P925.rpgleinc'

dcl-ds T1142 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1142 FROM T1142 LIMIT 1;

theCharVar = 'Hello from P2072';
dsply theCharVar;
P29();
P1494();
P925();
return;