**free

ctl-opt dftactgrp(*no);

dcl-pi P2944;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P443.rpgleinc'
/copy 'qrpgleref/P228.rpgleinc'
/copy 'qrpgleref/P764.rpgleinc'

dcl-ds T1143 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1143 FROM T1143 LIMIT 1;

theCharVar = 'Hello from P2944';
dsply theCharVar;
P443();
P228();
P764();
return;