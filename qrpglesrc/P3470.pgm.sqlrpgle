**free

ctl-opt dftactgrp(*no);

dcl-pi P3470;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2677.rpgleinc'
/copy 'qrpgleref/P2111.rpgleinc'
/copy 'qrpgleref/P2239.rpgleinc'

dcl-ds T618 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T618 FROM T618 LIMIT 1;

theCharVar = 'Hello from P3470';
dsply theCharVar;
P2677();
P2111();
P2239();
return;