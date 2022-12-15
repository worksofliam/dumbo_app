**free

ctl-opt dftactgrp(*no);

dcl-pi P5243;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1920.rpgleinc'
/copy 'qrpgleref/P2726.rpgleinc'
/copy 'qrpgleref/P4319.rpgleinc'

dcl-ds T1192 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1192 FROM T1192 LIMIT 1;

theCharVar = 'Hello from P5243';
dsply theCharVar;
P1920();
P2726();
P4319();
return;