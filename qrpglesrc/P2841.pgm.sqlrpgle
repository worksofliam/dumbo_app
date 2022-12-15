**free

ctl-opt dftactgrp(*no);

dcl-pi P2841;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2672.rpgleinc'
/copy 'qrpgleref/P1355.rpgleinc'
/copy 'qrpgleref/P1935.rpgleinc'

dcl-ds T728 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T728 FROM T728 LIMIT 1;

theCharVar = 'Hello from P2841';
dsply theCharVar;
P2672();
P1355();
P1935();
return;