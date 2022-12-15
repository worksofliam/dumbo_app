**free

ctl-opt dftactgrp(*no);

dcl-pi P1189;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P809.rpgleinc'
/copy 'qrpgleref/P286.rpgleinc'
/copy 'qrpgleref/P414.rpgleinc'

dcl-ds T959 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T959 FROM T959 LIMIT 1;

theCharVar = 'Hello from P1189';
dsply theCharVar;
P809();
P286();
P414();
return;