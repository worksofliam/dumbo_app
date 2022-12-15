**free

ctl-opt dftactgrp(*no);

dcl-pi P3504;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P853.rpgleinc'
/copy 'qrpgleref/P2374.rpgleinc'
/copy 'qrpgleref/P2578.rpgleinc'

dcl-ds T437 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T437 FROM T437 LIMIT 1;

theCharVar = 'Hello from P3504';
dsply theCharVar;
P853();
P2374();
P2578();
return;