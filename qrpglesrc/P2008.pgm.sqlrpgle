**free

ctl-opt dftactgrp(*no);

dcl-pi P2008;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1334.rpgleinc'
/copy 'qrpgleref/P1404.rpgleinc'
/copy 'qrpgleref/P860.rpgleinc'

dcl-ds T453 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T453 FROM T453 LIMIT 1;

theCharVar = 'Hello from P2008';
dsply theCharVar;
P1334();
P1404();
P860();
return;