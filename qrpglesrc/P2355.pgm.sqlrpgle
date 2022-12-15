**free

ctl-opt dftactgrp(*no);

dcl-pi P2355;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1760.rpgleinc'
/copy 'qrpgleref/P705.rpgleinc'
/copy 'qrpgleref/P2253.rpgleinc'

dcl-ds T682 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T682 FROM T682 LIMIT 1;

theCharVar = 'Hello from P2355';
dsply theCharVar;
P1760();
P705();
P2253();
return;