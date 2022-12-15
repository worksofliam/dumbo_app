**free

ctl-opt dftactgrp(*no);

dcl-pi P4786;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2490.rpgleinc'
/copy 'qrpgleref/P1839.rpgleinc'
/copy 'qrpgleref/P2989.rpgleinc'

dcl-ds T1272 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1272 FROM T1272 LIMIT 1;

theCharVar = 'Hello from P4786';
dsply theCharVar;
P2490();
P1839();
P2989();
return;