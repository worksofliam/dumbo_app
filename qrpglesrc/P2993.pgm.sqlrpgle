**free

ctl-opt dftactgrp(*no);

dcl-pi P2993;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1698.rpgleinc'
/copy 'qrpgleref/P1244.rpgleinc'
/copy 'qrpgleref/P2691.rpgleinc'

dcl-ds T730 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T730 FROM T730 LIMIT 1;

theCharVar = 'Hello from P2993';
dsply theCharVar;
P1698();
P1244();
P2691();
return;