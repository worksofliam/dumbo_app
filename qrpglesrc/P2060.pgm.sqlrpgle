**free

ctl-opt dftactgrp(*no);

dcl-pi P2060;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1919.rpgleinc'
/copy 'qrpgleref/P1550.rpgleinc'
/copy 'qrpgleref/P1893.rpgleinc'

dcl-ds T596 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T596 FROM T596 LIMIT 1;

theCharVar = 'Hello from P2060';
dsply theCharVar;
P1919();
P1550();
P1893();
return;