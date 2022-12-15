**free

ctl-opt dftactgrp(*no);

dcl-pi P3030;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1756.rpgleinc'
/copy 'qrpgleref/P488.rpgleinc'
/copy 'qrpgleref/P2366.rpgleinc'

dcl-ds T618 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T618 FROM T618 LIMIT 1;

theCharVar = 'Hello from P3030';
dsply theCharVar;
P1756();
P488();
P2366();
return;