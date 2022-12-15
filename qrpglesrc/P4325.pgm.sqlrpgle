**free

ctl-opt dftactgrp(*no);

dcl-pi P4325;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1629.rpgleinc'
/copy 'qrpgleref/P3431.rpgleinc'
/copy 'qrpgleref/P2989.rpgleinc'

dcl-ds T395 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T395 FROM T395 LIMIT 1;

theCharVar = 'Hello from P4325';
dsply theCharVar;
P1629();
P3431();
P2989();
return;