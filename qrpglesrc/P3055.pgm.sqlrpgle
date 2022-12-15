**free

ctl-opt dftactgrp(*no);

dcl-pi P3055;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1334.rpgleinc'
/copy 'qrpgleref/P1925.rpgleinc'
/copy 'qrpgleref/P944.rpgleinc'

dcl-ds T303 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T303 FROM T303 LIMIT 1;

theCharVar = 'Hello from P3055';
dsply theCharVar;
P1334();
P1925();
P944();
return;