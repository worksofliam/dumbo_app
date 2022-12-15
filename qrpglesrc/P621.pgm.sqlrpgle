**free

ctl-opt dftactgrp(*no);

dcl-pi P621;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P372.rpgleinc'
/copy 'qrpgleref/P279.rpgleinc'
/copy 'qrpgleref/P226.rpgleinc'

dcl-ds T1085 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1085 FROM T1085 LIMIT 1;

theCharVar = 'Hello from P621';
dsply theCharVar;
P372();
P279();
P226();
return;