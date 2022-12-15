**free

ctl-opt dftactgrp(*no);

dcl-pi P212;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P117.rpgleinc'
/copy 'qrpgleref/P115.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'

dcl-ds T846 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T846 FROM T846 LIMIT 1;

theCharVar = 'Hello from P212';
dsply theCharVar;
P117();
P115();
P14();
return;