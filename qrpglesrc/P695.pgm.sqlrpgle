**free

ctl-opt dftactgrp(*no);

dcl-pi P695;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P510.rpgleinc'
/copy 'qrpgleref/P297.rpgleinc'
/copy 'qrpgleref/P238.rpgleinc'

dcl-ds T235 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T235 FROM T235 LIMIT 1;

theCharVar = 'Hello from P695';
dsply theCharVar;
P510();
P297();
P238();
return;