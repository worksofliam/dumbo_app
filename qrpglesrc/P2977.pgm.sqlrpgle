**free

ctl-opt dftactgrp(*no);

dcl-pi P2977;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P65.rpgleinc'
/copy 'qrpgleref/P2255.rpgleinc'
/copy 'qrpgleref/P1527.rpgleinc'

dcl-ds T420 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T420 FROM T420 LIMIT 1;

theCharVar = 'Hello from P2977';
dsply theCharVar;
P65();
P2255();
P1527();
return;