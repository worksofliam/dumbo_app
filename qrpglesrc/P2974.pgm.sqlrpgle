**free

ctl-opt dftactgrp(*no);

dcl-pi P2974;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2261.rpgleinc'
/copy 'qrpgleref/P774.rpgleinc'
/copy 'qrpgleref/P2079.rpgleinc'

dcl-ds T1093 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1093 FROM T1093 LIMIT 1;

theCharVar = 'Hello from P2974';
dsply theCharVar;
P2261();
P774();
P2079();
return;