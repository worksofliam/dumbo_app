**free

ctl-opt dftactgrp(*no);

dcl-pi P4920;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3581.rpgleinc'
/copy 'qrpgleref/P488.rpgleinc'
/copy 'qrpgleref/P2434.rpgleinc'

dcl-ds T610 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T610 FROM T610 LIMIT 1;

theCharVar = 'Hello from P4920';
dsply theCharVar;
P3581();
P488();
P2434();
return;