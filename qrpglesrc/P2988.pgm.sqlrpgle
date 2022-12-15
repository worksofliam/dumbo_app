**free

ctl-opt dftactgrp(*no);

dcl-pi P2988;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P466.rpgleinc'
/copy 'qrpgleref/P402.rpgleinc'
/copy 'qrpgleref/P2527.rpgleinc'

dcl-ds T9 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T9 FROM T9 LIMIT 1;

theCharVar = 'Hello from P2988';
dsply theCharVar;
P466();
P402();
P2527();
return;