**free

ctl-opt dftactgrp(*no);

dcl-pi P5491;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P477.rpgleinc'
/copy 'qrpgleref/P2705.rpgleinc'
/copy 'qrpgleref/P3654.rpgleinc'

dcl-ds T1736 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1736 FROM T1736 LIMIT 1;

theCharVar = 'Hello from P5491';
dsply theCharVar;
P477();
P2705();
P3654();
return;