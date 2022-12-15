**free

ctl-opt dftactgrp(*no);

dcl-pi P3620;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2932.rpgleinc'
/copy 'qrpgleref/P1270.rpgleinc'
/copy 'qrpgleref/P3305.rpgleinc'

dcl-ds T1770 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1770 FROM T1770 LIMIT 1;

theCharVar = 'Hello from P3620';
dsply theCharVar;
P2932();
P1270();
P3305();
return;