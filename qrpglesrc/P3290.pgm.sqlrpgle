**free

ctl-opt dftactgrp(*no);

dcl-pi P3290;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1919.rpgleinc'
/copy 'qrpgleref/P2467.rpgleinc'
/copy 'qrpgleref/P2973.rpgleinc'

dcl-ds T1123 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1123 FROM T1123 LIMIT 1;

theCharVar = 'Hello from P3290';
dsply theCharVar;
P1919();
P2467();
P2973();
return;