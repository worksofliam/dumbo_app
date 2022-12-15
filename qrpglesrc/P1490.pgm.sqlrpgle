**free

ctl-opt dftactgrp(*no);

dcl-pi P1490;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1286.rpgleinc'
/copy 'qrpgleref/P263.rpgleinc'
/copy 'qrpgleref/P1385.rpgleinc'

dcl-ds T1240 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1240 FROM T1240 LIMIT 1;

theCharVar = 'Hello from P1490';
dsply theCharVar;
P1286();
P263();
P1385();
return;