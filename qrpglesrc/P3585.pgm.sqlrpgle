**free

ctl-opt dftactgrp(*no);

dcl-pi P3585;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2696.rpgleinc'
/copy 'qrpgleref/P1051.rpgleinc'
/copy 'qrpgleref/P597.rpgleinc'

dcl-ds T824 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T824 FROM T824 LIMIT 1;

theCharVar = 'Hello from P3585';
dsply theCharVar;
P2696();
P1051();
P597();
return;