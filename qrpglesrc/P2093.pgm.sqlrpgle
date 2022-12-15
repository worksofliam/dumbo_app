**free

ctl-opt dftactgrp(*no);

dcl-pi P2093;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P594.rpgleinc'
/copy 'qrpgleref/P1653.rpgleinc'
/copy 'qrpgleref/P1823.rpgleinc'

dcl-ds T221 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T221 FROM T221 LIMIT 1;

theCharVar = 'Hello from P2093';
dsply theCharVar;
P594();
P1653();
P1823();
return;